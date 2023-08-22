/// @description Insert description here
// You can write your code in this editor
hspd = 0;							//velocidade horizontal
move_dir = 0;						//direção de movimento
move_spd = 0;						//velocidade de movimentação
move_spd_max = 2;					//velocidade máxima
acc = 0.3;							//aceleração
dcc = 0.3;							//desaceleração
vspd = 0;							//velocidade vertical
vspd_min = -7;						//velocidade mínima da queda
vspd_max = 7;						//velocidade máxima de queda
grv = 0.3;							//gravidade
mass = 1;							//massa do personagem		//estado atual do personagem
move_state = "idle";
x_scale = 1;						//escala horizontal
y_scale = 1;						//escala vertical
timer_state = 0;
hp_max = 10;
hp = hp_max;
hit_by_attack = ds_list_create();
damage = 2;
knockback_speed = 0.2;





