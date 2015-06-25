.class public Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;
.super Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;
.source "SourceFile"


# instance fields
.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    .line 39
    iput-object p5, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected _deserializeIfNatural(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lorg/codehaus/jackson/map/jsontype/impl/a;->a:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 189
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 184
    :pswitch_4
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_baseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected _deserializeTypedUsingDefaultImpl(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_defaultImpl:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_findDefaultImplDeserializer(Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 111
    if-eqz p3, :cond_0

    .line 112
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 113
    invoke-virtual {p3, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonParser;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 117
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    :cond_1
    :goto_0
    return-object v0

    .line 120
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeIfNatural(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 126
    invoke-super {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->deserializeTypedFromAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_3
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' that is to contain type id  (for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->baseTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method public deserializeTypedFromAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 144
    invoke-super {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;->deserializeTypedFromArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->deserializeTypedFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public deserializeTypedFromObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 60
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_2

    .line 61
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :cond_0
    move-object v2, v0

    move-object v0, v1

    .line 77
    :goto_0
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_6

    .line 78
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 80
    iget-object v3, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p0, p2, v1}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_findDeserializer(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/codehaus/jackson/util/JsonParserSequence;->createFlattened(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/util/JsonParserSequence;

    move-result-object p1

    .line 90
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 92
    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/JsonDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    :goto_1
    return-object v0

    .line 62
    :cond_2
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_3

    .line 70
    invoke-virtual {p0, p1, p2, v1}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 71
    :cond_3
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2, v1}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_4
    if-nez v0, :cond_5

    .line 95
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 97
    :cond_5
    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 77
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 100
    :cond_6
    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInclusion()Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lorg/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method
