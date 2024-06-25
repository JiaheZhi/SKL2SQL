from craftsman.cost_model import utils
# class cost(Object):
#     """
#     The statistical information of number of executions of the computation primitives
#     """
#     # cost of preprocessor (Expand and con-c-cat and fused ops)
#     def get_prep_cost():
#         pass

#     # cost of tree model 
#     def get_tree_cost():
#         pass

'''
Operator's Cost calculation
'''

# def get_expand_cost(op,downstream_op = None):
#     op_cost = None
#     if downstream_op is None:        
#         op_cost = op_cost("Expand")
#         if op.op_name == "BinaryEncoder":
#             index = 0
#             for field_name, value in op.constant_params.item(): # traverse each sub_field
#                 op_cost.set_cost(field_name,op.variant_len[index])
#                 index += 1
#         else:
#             pass
#     else:
#         if op.op_name == "BinaryEncoder":
#             # transform list to dict
#             params_dict = {}
#             index = 0
#             op_cost = op_cost("cfe")
#             for param in downstream_op.constant_params:
#                 if params_dict[param] is None:
#                     params_dict[param] = [index]
#                 else:
#                     params_dict[param].append(index)
#                 index += 1
            
#             comp_lens = []

#             field_name_idx = 0
#             field_names = list(op.variant_params.keys())
#             for variant_param in op.variant_params: # traverse each sub_field
#                 idx_list = [params_dict.get(p) for p in variant_param]
#                 idx_list_merge = sum(idx_list,[]).sort()
#                 comp_len = count_interval(idx_list_merge) # TODO: or表达式的计算代价目前采用“平均”启发式策略，其计算方式可能需要提高(如，建立统计信息)
#                 op_cost.set_cost(field_names[field_name_idx],comp_len)
#         else:
#             pass

#     return op_cost
            

# def get_conccat_cost(op):
#     cost = 0
#     op_cost = op_cost("Con-c-Cat")
#     for c in op.constant_params:
#         set_cost(c,cost)
#         cost += 1

#     return op_cost


# def get_catccat_cost(op):
#     cost = 0
#     op_cost = op_cost("Cat-c-Cat")
#     for c in op.constant_params:
#         set_cost(c,cost)
#         cost += 1

#     return op_cost




def get_chain_cost_info (model_name,model,field,chain):
    # op+Tree

    if model_name == "DecisionTreeClassifier" or model_name == "RandomForestClassifier":
            if len(chain) == 1: # 常见情况 cat-c-cat expand con-c-cat
                op_type = list(chain.keys())[0]
                op = list(chain.values())[0]
                # get op cost (no fusion)                     
                if op_type == "expand":
                    get_expand_cost(op)
                elif op_type == "con-c-cat":
                    get_conccat_cost(op)
                elif op_type == "cat-c-cat":
                    get_catccat_cost(op)
                
                # Join cost

            elif len(chain) == 2: #con-c-cat -> expand -> tree
                op1 = list(chain.values())[0]
                op2 = list(chain.values())[1]
                # cet t's is stored in tree_cost_info
                op1_cost = get_conccat_cost(op1)
                op2_cost = get_catccat_cost(op2)

                # c(et) et's is stored in tree_cost_info
                op1_cost = get_conccat_cost(op1)
                
                # (ce)t
                cfe_cost = get_expand_cost(op2,op1)
            
                # (cet)
                cfe_cost = get_expand_cost(op2,op1)
                # TODO: global change
                chain = eDAG[attribute_index]
                chain['cfe_cost'] = cfe_cost

    # get tree cost and fusion cost (cost_info_table)
    tree_cost_info = get_tree_model_cost(model, model_name,field)




    # op+LR



