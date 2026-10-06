

# ─── golden_apple ───
execute if data storage fptrick:math this.item{id:"minecraft:golden_apple"} run data modify storage fptrick:math macro.x set value {"on_consume_effects":[{"type":"apply_effects","effects":[{"id":"regeneration","amplifier":1,"duration":100},{"id":"absorption","amplifier":0,"duration":2400}]}]}

# ─── enchanted_golden_apple ───
execute if data storage fptrick:math this.item{id:"minecraft:enchanted_golden_apple"} run data modify storage fptrick:math macro.x set value {"on_consume_effects":[{"type":"apply_effects","effects":[{"id":"regeneration","amplifier":1,"duration":400},{"id":"absorption","amplifier":3,"duration":2400},{"id":"resistance","amplifier":0,"duration":6000},{"id":"fire_resistance","amplifier":0,"duration":6000}]}]}

# ─── rotten_flesh (80% chance hunger) ───
execute if data storage fptrick:math this.item{id:"minecraft:rotten_flesh"} run data modify storage fptrick:math macro.x set value {"on_consume_effects":[{"type":"apply_effects","effects":[{"id":"hunger","amplifier":0,"duration":600}],"probability":0.8}]}

# ─── raw_chicken (30% chance hunger) ───
execute if data storage fptrick:math this.item{id:"minecraft:raw_chicken"} run data modify storage fptrick:math macro.x set value {"on_consume_effects":[{"type":"apply_effects","effects":[{"id":"hunger","amplifier":0,"duration":600}],"probability":0.3}]}

# ─── pufferfish ───
execute if data storage fptrick:math this.item{id:"minecraft:pufferfish"} run data modify storage fptrick:math macro.x set value {"on_consume_effects":[{"type":"apply_effects","effects":[{"id":"hunger","amplifier":2,"duration":300},{"id":"nausea","amplifier":0,"duration":300},{"id":"poison","amplifier":1,"duration":1200}]}]}

# ─── spider_eye ───
execute if data storage fptrick:math this.item{id:"minecraft:spider_eye"} run data modify storage fptrick:math macro.x set value {"on_consume_effects":[{"type":"apply_effects","effects":[{"id":"poison","amplifier":0,"duration":100}]}]}

# ─── poisonous_potato (60% chance poison) ───
execute if data storage fptrick:math this.item{id:"minecraft:poisonous_potato"} run data modify storage fptrick:math macro.x set value {"on_consume_effects":[{"type":"apply_effects","effects":[{"id":"poison","amplifier":0,"duration":100}],"probability":0.6}]}

# ─── honey_bottle (retire le poison) ───
execute if data storage fptrick:math this.item{id:"minecraft:honey_bottle"} run data modify storage fptrick:math macro.x set value {"on_consume_effects":[{"type":"remove_effects","effects":["minecraft:poison"]}]}

# ─── chorus_fruit (téléportation aléatoire) ───
execute if data storage fptrick:math this.item{id:"minecraft:chorus_fruit"} run data modify storage fptrick:math macro.x set value {"on_consume_effects":[{"type":"teleport_randomly","diameter":8.0}]}

# ─── suspicious_stew (dandelion / blue_orchid → Saturation) ───
execute if data storage fptrick:math this.item{id:"minecraft:suspicious_stew"} run data modify storage fptrick:math macro.x set value {"on_consume_effects":[{"type":"apply_effects","effects":[{"id":"saturation","amplifier":0,"duration":7}]}]}
