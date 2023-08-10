prime=function(n)
{
  if(n>=2)
  {
    x=seq(2,n)
    pn=c()
    
    for(i in seq(2,n))
    {
      if(any(x==i))
      {
        pn=c(pn,i)
        x=c(x[(x%%i)!=0],i)
      }
    }
    return (pn)
  }
  else
  {
    stop()
  }
}
prime(50)