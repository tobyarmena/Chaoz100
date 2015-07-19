var facingDir = argument2;
var targetDir = point_direction(x,y,argument0,argument1);

var facingMinusTarget = facingDir - targetDir;
angleDiff = facingMinusTarget;


if(abs(facingMinusTarget) > 180)
{
    if(facingDir > targetDir)
    {
        angleDiff = -1 * ((360 - facingDir) + targetDir);
    }
    else
    {
        angleDiff = (360 - targetDir) + facingDir;
    }
}