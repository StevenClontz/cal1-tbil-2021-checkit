def generator():
    x=var("x")

    random_scenario = choice(["cylinder","cone", "pyramid", "prism"])
    
    height=randint(5,10)*5    
    radius=randint(5,20)    
    width=randint(1,5)*5;
    length=randint(1,5)*5
    
    if random_scenario=="cylinder":
        A(x)=pi*radius^2
    if random_scenario=="cone":
        A(x)=pi*(radius*(1-x/height))^2
    if random_scenario=="pyramid":
        A(x)=(width*(1-x/height))^2
    if random_scenario=="prism":
        A(x)=width*length    
    
    dchoice=[
        randint(1,5)*x+randint(10,20),
        sqrt(randint(1,5)*x+randint(10,20)),
        e^(x/randint(1,5)*choice([-1,1]))+randint(10,20),
        randint(5,20)/(randint(1,5)*x+randint(10,20))
    ]
    
    shuffle(dchoice)
    
    density(x)=dchoice[0]

    return {
      "radius": radius,
      "height": height,
      "width": width,  
      "length": length,
      "Ax": A(x),
      "densx": density(x),
      "scenario":  {random_scenario: True},  
    }
