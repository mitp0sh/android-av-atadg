.class final Lorg/codehaus/jackson/map/deser/std/w;
.super Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "SourceFile"


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/util/EnumResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/util/EnumResolver",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/util/EnumResolver;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/util/EnumResolver",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    .line 233
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/std/w;->a:Lorg/codehaus/jackson/map/util/EnumResolver;

    .line 234
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/std/w;->b:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 235
    return-void
.end method


# virtual methods
.method public _parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/w;->b:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_1

    .line 242
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/w;->b:Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->call1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :cond_0
    return-object v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/w;->a:Lorg/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/util/EnumResolver;->findEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 248
    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/w;->_keyClass:Ljava/lang/Class;

    const-string v1, "not one of values for Enum class"

    invoke-virtual {p2, v0, p1, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method
