.class public Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _keyDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    .line 34
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/q;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/q;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 35
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/r;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/r;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 36
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/t;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/t;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 37
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/aa;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/aa;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 38
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/y;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/y;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 39
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/z;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/z;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 40
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/x;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/x;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 41
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/v;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/v;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 42
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/u;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/u;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 43
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/s;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/s;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 44
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/ae;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/ae;-><init>()V

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V

    .line 45
    return-void
.end method

.method private a(Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;)V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;->getKeyClass()Ljava/lang/Class;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public static constructAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;-><init>()V

    iget-object v0, v0, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializers;->_keyDeserializers:Ljava/util/HashMap;

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lorg/codehaus/jackson/map/util/EnumResolver;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/util/EnumResolver",
            "<*>;)",
            "Lorg/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/deser/std/w;-><init>(Lorg/codehaus/jackson/map/util/EnumResolver;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lorg/codehaus/jackson/map/util/EnumResolver;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/util/EnumResolver",
            "<*>;",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")",
            "Lorg/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/w;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/deser/std/w;-><init>(Lorg/codehaus/jackson/map/util/EnumResolver;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructStringKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/deser/std/ad;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/deser/std/ad;

    move-result-object v0

    return-object v0
.end method

.method public static findStringBasedKeyDeserializer(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->introspect(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 88
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 93
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/ab;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/std/ab;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 106
    :goto_0
    return-object v0

    .line 98
    :cond_1
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 103
    :cond_2
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/ac;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/std/ac;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 106
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
