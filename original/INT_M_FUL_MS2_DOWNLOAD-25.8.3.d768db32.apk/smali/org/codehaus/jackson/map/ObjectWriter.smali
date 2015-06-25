.class public Lorg/codehaus/jackson/map/ObjectWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/Versioned;


# static fields
.field protected static final NULL_PRETTY_PRINTER:Lorg/codehaus/jackson/PrettyPrinter;


# instance fields
.field protected final _config:Lorg/codehaus/jackson/map/SerializationConfig;

.field protected final _jsonFactory:Lorg/codehaus/jackson/JsonFactory;

.field protected final _prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

.field protected final _provider:Lorg/codehaus/jackson/map/SerializerProvider;

.field protected final _rootType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _schema:Lorg/codehaus/jackson/FormatSchema;

.field protected final _serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/codehaus/jackson/util/MinimalPrettyPrinter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/MinimalPrettyPrinter;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lorg/codehaus/jackson/PrettyPrinter;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 115
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 116
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 117
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 119
    iput-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    .line 120
    iput-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 121
    iput-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 122
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/FormatSchema;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 134
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 135
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 136
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 138
    iput-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    .line 139
    iput-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 140
    iput-object p3, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 141
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 97
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerProvider:Lorg/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 98
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 99
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectMapper;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 101
    iput-object p3, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    .line 102
    iput-object p4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 104
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 169
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 170
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 171
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 172
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 174
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    .line 175
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 176
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;Lorg/codehaus/jackson/FormatSchema;)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    .line 151
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    .line 152
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 153
    iget-object v0, p1, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    .line 155
    iput-object p3, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    .line 156
    iput-object p4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 157
    iput-object p5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    .line 158
    return-void
.end method

.method private final a(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 481
    move-object v6, p2

    check-cast v6, Ljava/io/Closeable;

    .line 483
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_3

    .line 484
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p3, p1, p2, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 489
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_0
    const/4 v0, 0x0

    .line 494
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 496
    const/4 v1, 0x0

    .line 497
    :try_start_2
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 502
    if-eqz v7, :cond_1

    .line 504
    :try_start_3
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 507
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 509
    :try_start_4
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 513
    :cond_2
    :goto_2
    return-void

    .line 486
    :cond_3
    :try_start_5
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerFactory;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz p1, :cond_4

    .line 504
    :try_start_6
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 507
    :cond_4
    :goto_4
    if-eqz v6, :cond_5

    .line 509
    :try_start_7
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 510
    :cond_5
    :goto_5
    throw v0

    .line 505
    :catch_0
    move-exception v0

    goto :goto_1

    .line 510
    :catch_1
    move-exception v0

    goto :goto_2

    .line 505
    :catch_2
    move-exception v1

    goto :goto_4

    .line 510
    :catch_3
    move-exception v1

    goto :goto_5

    .line 502
    :catchall_1
    move-exception v0

    move-object p1, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v7

    move-object p1, v7

    goto :goto_3
.end method

.method private final b(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V
    .locals 7

    .prologue
    .line 522
    move-object v6, p2

    check-cast v6, Ljava/io/Closeable;

    .line 524
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_2

    .line 525
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, p3, p1, p2, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 529
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    :cond_0
    const/4 v1, 0x0

    .line 534
    :try_start_1
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 536
    if-eqz v1, :cond_1

    .line 538
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 542
    :cond_1
    :goto_1
    return-void

    .line 527
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerFactory;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_3

    .line 538
    :try_start_4
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 539
    :cond_3
    :goto_3
    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    .line 536
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2
.end method


# virtual methods
.method protected final _configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 438
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    .line 440
    sget-object v1, Lorg/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lorg/codehaus/jackson/PrettyPrinter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->setPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/JsonGenerator;

    .line 445
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->setSchema(Lorg/codehaus/jackson/FormatSchema;)V

    .line 449
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/ObjectWriter;->a(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 472
    :goto_1
    return-void

    .line 441
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->INDENT_OUTPUT:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->useDefaultPrettyPrinter()Lorg/codehaus/jackson/JsonGenerator;

    goto :goto_0

    .line 453
    :cond_4
    const/4 v6, 0x0

    .line 455
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_6

    .line 456
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    :goto_2
    const/4 v1, 0x1

    .line 461
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 466
    :catchall_0
    move-exception v0

    :goto_3
    if-nez v1, :cond_5

    .line 468
    :try_start_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 469
    :cond_5
    :goto_4
    throw v0

    .line 458
    :cond_6
    :try_start_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerFactory;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 466
    :catchall_1
    move-exception v0

    move v1, v6

    goto :goto_3

    .line 469
    :catch_0
    move-exception v1

    goto :goto_4
.end method

.method public canSerialize(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->hasSerializerFor(Lorg/codehaus/jackson/map/SerializationConfig;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerFactory;)Z

    move-result v0

    return v0
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/util/VersionUtil;->versionFor(Ljava/lang/Class;)Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withDateFormat(Ljava/text/DateFormat;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    .line 300
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    if-ne v1, v0, :cond_0

    .line 303
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withDefaultPrettyPrinter()Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;-><init>()V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectWriter;->withPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withFilters(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getFilterProvider()Lorg/codehaus/jackson/map/ser/FilterProvider;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 276
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withFilters(Lorg/codehaus/jackson/map/ser/FilterProvider;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withPrettyPrinter(Lorg/codehaus/jackson/PrettyPrinter;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 6

    .prologue
    .line 244
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-ne p1, v0, :cond_0

    .line 251
    :goto_0
    return-object p0

    .line 248
    :cond_0
    if-nez p1, :cond_1

    .line 249
    sget-object v4, Lorg/codehaus/jackson/map/ObjectWriter;->NULL_PRETTY_PRINTER:Lorg/codehaus/jackson/PrettyPrinter;

    .line 251
    :goto_1
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;Lorg/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    move-object v4, p1

    goto :goto_1
.end method

.method public withSchema(Lorg/codehaus/jackson/FormatSchema;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 6

    .prologue
    .line 284
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    if-ne v0, p1, :cond_0

    .line 287
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v3, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;Lorg/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->constructType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectWriter;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 6

    .prologue
    .line 213
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    if-ne p1, v0, :cond_0

    .line 215
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_prettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_schema:Lorg/codehaus/jackson/FormatSchema;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/PrettyPrinter;Lorg/codehaus/jackson/FormatSchema;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withType(Lorg/codehaus/jackson/type/TypeReference;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ObjectWriter;->withType(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public withView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 203
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ObjectWriter;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->withView(Ljava/lang/Class;)Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectWriter;-><init>(Lorg/codehaus/jackson/map/ObjectWriter;Lorg/codehaus/jackson/map/SerializationConfig;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public writeValue(Ljava/io/File;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/File;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 364
    return-void
.end method

.method public writeValue(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method public writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 319
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->CLOSE_CLOSEABLE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/ObjectWriter;->b(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializationConfig;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v2, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/map/SerializerFactory;)V

    .line 327
    :goto_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FLUSH_AFTER_WRITE_VALUE:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_provider:Lorg/codehaus/jackson/map/SerializerProvider;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_config:Lorg/codehaus/jackson/map/SerializationConfig;

    iget-object v4, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_rootType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v5, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/SerializerProvider;->serializeValue(Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerFactory;)V

    goto :goto_1
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .locals 3

    .prologue
    .line 407
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .line 408
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    sget-object v2, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 409
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    .line 410
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->release()V

    .line 411
    return-object v1
.end method

.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    new-instance v0, Lorg/codehaus/jackson/io/SegmentedStringWriter;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonFactory;->_getBufferRecycler()Lorg/codehaus/jackson/util/BufferRecycler;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/io/SegmentedStringWriter;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    .line 393
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectWriter;->_jsonFactory:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/codehaus/jackson/map/ObjectWriter;->_configAndWriteValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 394
    invoke-virtual {v0}, Lorg/codehaus/jackson/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
