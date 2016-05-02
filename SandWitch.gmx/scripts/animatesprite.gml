///animatesprite(image speed, right, right up, up, left up, left, left down, down, right down)
image_speed = 0;

if len == 0 {
    image_index = 0;
    image_speed = 0;
}

switch face {
    case RIGHT:
         image_angle = 0;
    break;
    
    case RIGHTUP:
         image_angle = 45;
    break;
    
    case UP:
         image_angle = 90;
    break;
    
    case LEFTUP:
         image_angle = 135;
    break;
    
    case LEFT:
         image_angle = 180;
    break;
    
    case LEFTDOWN:
         image_angle = 215;
    break;
    
    case DOWN:
         image_angle = 270;
    break;
    
    case RIGHTDOWN:
         image_angle = 315;
    break;
    
}
