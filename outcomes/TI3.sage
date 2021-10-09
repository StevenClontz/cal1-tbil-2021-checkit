def generator():
    from sympy.calculus.singularities import singularities
    
    x = var("x")

    # define possible factors
    
    out(x)=0
    u(x)=0
    
    n=randint(1,5)
    m=randint(1,5)
    
    f(x)=(cos(x))^m*(sin(x))^n
    k=min(n,m)
    
    if n%2==0 and n%2==0:
        
    
    
    
    
        
    
    
    

    return {
        "f": f.simplify(),
        "dfdx": dfdx.simplify(),
    }
