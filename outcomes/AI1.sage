def generator():
    x=var("x")
    from sage.symbolic.integration.integral import definite_integral

    
    functions=[
        randint(1,3)*choice([-1,1])*x^2+randint(-4,4)*x+randint(-4,4),
        randint(1,3)*sqrt(x+randint(1,4))+randint(-3,3)*x+randint(-4,4),
        randint(1,3)*e^(x/randint(1,5))+randint(-3,3)*x+randint(-4,4),
        #sin(randint(1,3)*x+randint(0,4))+randint(-3,3)*x+randint(-4,4),
        #cos(randint(1,3)*x+randint(0,4))+randint(-3,3)*x+randint(-4,4)
    ]
    
    f(x)=choice(functions)
    
    a=randint(0,3)
    b=a+randint(1,4)
    
    fint=definite_integral(f(x),x,a,b)
    favg=fint/(b-a)

    return {
      "f": f(x),
      "favg": favg,
      "a": a,
      "b": b,  
    }
