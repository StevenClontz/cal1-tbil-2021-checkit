def generator():
    from sage.symbolic.integration.integral import indefinite_integral

    x=var("x")

    
    u(x)=x^randint(1,3)
    
    vpfactors=[
        e^x,
        cos(x),
        sin(x),
    ]
    
    shuffle(vpfactors)
    vp(x)=vpfactors[0]
    
    k=randint(1,5)*choice([-1,1])
    
    
    dfdx=k*u(x)*vp(x)
    
    f=indefinite_integral(dfdx, x)
    
    

    return {
        "f": f.expand(),
        "dfdx": dfdx,
    }
