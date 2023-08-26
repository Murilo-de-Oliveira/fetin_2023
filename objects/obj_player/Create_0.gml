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
mass = 1;							//massa do personagem
jump_height = 6;					//pulo do personagem
coyote_time_max = 10;				//valor máximo do coyote time
coyote_time = coyote_time_max;		//valor atual do coyote time
state = scr_player_state_free;		//estado atual do personagem
x_scale = 1;						//escala horizontal
y_scale = 1;						//escala vertical
stamina_max = 10;
stamina = stamina_max;				//Vigor do personagem
combo = 0;
//hit_by_attack = ds_list_create();
can_attack = true;
hp_max = 4;
hp = hp_max;
knockback_speed = 3;
depth = -1;



