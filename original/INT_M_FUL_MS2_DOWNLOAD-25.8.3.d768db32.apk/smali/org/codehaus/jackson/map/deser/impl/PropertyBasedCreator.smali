.class public final Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _defaultValues:[Ljava/lang/Object;

.field protected final _properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _propertiesWithInjectables:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

.field protected final _propertyCount:I

.field protected final _valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    .line 59
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->getFromObjectArguments()[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 61
    array-length v4, v3

    .line 62
    iput v4, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertyCount:I

    .line 63
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v4, :cond_4

    .line 64
    aget-object v5, v3, v2

    .line 65
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    if-nez v1, :cond_0

    .line 68
    new-array v1, v4, [Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lorg/codehaus/jackson/map/util/ClassUtil;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v2

    .line 72
    :cond_1
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v6

    .line 73
    if-eqz v6, :cond_3

    .line 74
    if-nez v0, :cond_2

    .line 75
    new-array v0, v4, [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 77
    :cond_2
    aput-object v5, v0, v2

    .line 63
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_4
    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    .line 81
    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertiesWithInjectables:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 82
    return-void
.end method


# virtual methods
.method public assignDeserializer(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/JsonDeserializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_1

    .line 97
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 98
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    .line 100
    :cond_0
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v0

    aput-object v1, v2, v0

    .line 102
    :cond_1
    return-void
.end method

.method public build(Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_valueInstantiator:Lorg/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->getParameters([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/ValueInstantiator;->createFromObjectWith([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->buffered()Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyValue;->assign(Ljava/lang/Object;)V

    .line 120
    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue;->next:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

    goto :goto_0

    .line 123
    :cond_0
    return-object v1
.end method

.method public findCreatorProperty(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0
.end method

.method public getCreatorProperties()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public startBuilding(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    iget v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertyCount:I

    invoke-direct {v0, p1, p2, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;-><init>(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;I)V

    .line 110
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertiesWithInjectables:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertiesWithInjectables:[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->inject([Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 113
    :cond_0
    return-object v0
.end method
