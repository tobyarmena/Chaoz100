var facingDir = direction;
var targetDir = argument0;

var facingMinusTarget = facingDir - targetDir;
var angleDiff = facingMinusTarget;


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
if(abs(angleDiff)>140)
{
    direction = argument0   
}
if(angleDiff<0)
{
    direction += argument1
}
if(angleDiff>0)
{
    direction -= argument1
}
if(abs(angleDiff)<argument1)
{
    direction = argument0
}