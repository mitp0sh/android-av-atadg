.class public Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _booleanCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

.field protected _delegateCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _doubleCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _intCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _longCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _propertyBasedArgs:[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

.field protected _propertyBasedCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _stringCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field final a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field final b:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    .line 43
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 44
    iput-boolean p2, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->b:Z

    .line 45
    return-void
.end method


# virtual methods
.method public addBooleanCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_booleanCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "boolean"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_booleanCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 98
    return-void
.end method

.method public addDelegatingCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_delegateCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "delegate"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_delegateCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 102
    return-void
.end method

.method public addDoubleCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_doubleCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "double"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_doubleCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 95
    return-void
.end method

.method public addIntCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_intCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "int"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_intCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 89
    return-void
.end method

.method public addLongCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_longCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "long"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_longCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 92
    return-void
.end method

.method public addPropertyCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;)V
    .locals 6

    .prologue
    .line 106
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "property-based"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 108
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 110
    const/4 v0, 0x0

    array-length v3, p2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 111
    aget-object v0, p2, v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, p2, v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate creator property \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " vs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_2
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    .line 125
    return-void
.end method

.method public addStringCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_stringCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const-string v1, "String"

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_stringCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 86
    return-void
.end method

.method public constructValueInstantiator(Lorg/codehaus/jackson/map/DeserializationConfig;)Lorg/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 6

    .prologue
    .line 52
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/deser/std/StdValueInstantiator;-><init>(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)V

    .line 56
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_delegateCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-nez v1, :cond_0

    .line 57
    const/4 v3, 0x0

    .line 63
    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_delegateCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lorg/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    .line 66
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_stringCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromStringCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 67
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_intCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromIntCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 68
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_longCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromLongCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 69
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_doubleCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromDoubleCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 70
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_booleanCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/std/StdValueInstantiator;->configureFromBooleanCreator(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    .line 71
    return-object v0

    .line 59
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_delegateCreator:Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    goto :goto_0
.end method

.method public setDefaultConstructor(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->_defaultConstructor:Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 82
    return-void
.end method

.method protected verifyNonDup(Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;Ljava/lang/String;)Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 3

    .prologue
    .line 136
    if-eqz p2, :cond_0

    .line 138
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " creators: already had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/impl/CreatorCollector;->b:Z

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedWithParams;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 145
    :cond_1
    return-object p1
.end method
