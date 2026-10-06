
import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))


for slot in range(54):

    with open(os.path.join(BASE_DIR,f'{slot}.mcfunction'),'w') as f:
        f.write(
    
    '''
data modify entity @e[tag=fptrick.temp,distance=..0.1,limit=1,type=item_display] item set from storage fptrick:math this[{Slot:'''+str(slot)+'''b}].components."minecraft:custom_data".fptrick_original
data modify storage fptrick:math count set from storage fptrick:math this[{Slot:'''+str(slot)+'''b}].count
item replace entity @s container.'''+str(slot)+''' from entity @e[tag=fptrick.temp,distance=..0.1,limit=1,type=item_display] container.0
item modify entity @s container.'''+str(slot)+''' fptrick_impulse:copy_count
'''
    
    )
        




