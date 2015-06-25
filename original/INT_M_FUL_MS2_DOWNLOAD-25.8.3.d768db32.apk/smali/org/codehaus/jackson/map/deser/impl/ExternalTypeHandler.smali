.class public Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lorg/codehaus/jackson/map/deser/impl/c;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Ljava/lang/String;

.field private final d:[Lorg/codehaus/jackson/util/TokenBuffer;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    .line 42
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->b:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->b:Ljava/util/HashMap;

    .line 43
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    array-length v0, v0

    .line 44
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->c:[Ljava/lang/String;

    .line 45
    new-array v0, v0, [Lorg/codehaus/jackson/util/TokenBuffer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->d:[Lorg/codehaus/jackson/util/TokenBuffer;

    .line 46
    return-void
.end method

.method protected constructor <init>([Lorg/codehaus/jackson/map/deser/impl/c;Ljava/util/HashMap;[Ljava/lang/String;[Lorg/codehaus/jackson/util/TokenBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/codehaus/jackson/map/deser/impl/c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Lorg/codehaus/jackson/util/TokenBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    .line 34
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->b:Ljava/util/HashMap;

    .line 35
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->c:[Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->d:[Lorg/codehaus/jackson/util/TokenBuffer;

    .line 37
    return-void
.end method


# virtual methods
.method protected final _deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 147
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeStartArray()V

    .line 148
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->c:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->d:[Lorg/codehaus/jackson/util/TokenBuffer;

    aget-object v1, v1, p4

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 151
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 152
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/TokenBuffer;->writeEndArray()V

    .line 154
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->asParser(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 156
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/impl/c;->b()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public complete(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 123
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 124
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->d:[Lorg/codehaus/jackson/util/TokenBuffer;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 123
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing external type id property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 131
    :cond_1
    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->d:[Lorg/codehaus/jackson/util/TokenBuffer;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 132
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/impl/c;->b()Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for external type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 135
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V

    goto :goto_1

    .line 137
    :cond_3
    return-object p3
.end method

.method public handleToken(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    if-nez v0, :cond_0

    .line 117
    :goto_0
    return v2

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 96
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    aget-object v0, v0, v3

    .line 98
    invoke-virtual {v0, p3}, Lorg/codehaus/jackson/map/deser/impl/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 100
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    .line 101
    if-eqz p4, :cond_2

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->d:[Lorg/codehaus/jackson/util/TokenBuffer;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    move v0, v1

    .line 111
    :goto_1
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0, p1, p2, p4, v3}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V

    .line 114
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->c:[Ljava/lang/String;

    aput-object v5, v0, v3

    .line 115
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->d:[Lorg/codehaus/jackson/util/TokenBuffer;

    aput-object v5, v0, v3

    :cond_1
    move v2, v1

    .line 117
    goto :goto_0

    :cond_2
    move v0, v2

    .line 101
    goto :goto_1

    .line 103
    :cond_3
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 104
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lorg/codehaus/jackson/JsonParser;)V

    .line 105
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->d:[Lorg/codehaus/jackson/util/TokenBuffer;

    aput-object v0, v4, v3

    .line 106
    if-eqz p4, :cond_4

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->c:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public handleTypePropertyValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 63
    if-nez v0, :cond_0

    move v0, v1

    .line 81
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->a:[Lorg/codehaus/jackson/map/deser/impl/c;

    aget-object v3, v3, v0

    .line 68
    invoke-virtual {v3, p3}, Lorg/codehaus/jackson/map/deser/impl/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 73
    if-eqz p4, :cond_2

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->d:[Lorg/codehaus/jackson/util/TokenBuffer;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    move v1, v2

    .line 75
    :cond_2
    if-eqz v1, :cond_3

    .line 76
    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->_deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;I)V

    .line 78
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->c:[Ljava/lang/String;

    aput-object v5, v1, v0

    .line 79
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->d:[Lorg/codehaus/jackson/util/TokenBuffer;

    aput-object v5, v1, v0

    :cond_3
    move v0, v2

    .line 81
    goto :goto_0
.end method

.method public start()Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;-><init>(Lorg/codehaus/jackson/map/deser/impl/ExternalTypeHandler;)V

    return-object v0
.end method
