.class Lcom/google/i18n/phonenumbers/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/i18n/phonenumbers/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/a;->a:Ljava/util/logging/Logger;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/a;->c:Ljava/util/Map;

    .line 54
    invoke-static {}, Lcom/google/i18n/phonenumbers/AlternateFormatsCountryCodeSet;->a()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/util/Set;

    .line 59
    invoke-static {}, Lcom/google/i18n/phonenumbers/ShortNumbersRegionCodeSet;->a()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static a(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lcom/google/i18n/phonenumbers/a;->d:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 96
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/a;->b:Ljava/util/Map;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/a;->b(I)V

    .line 100
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    sget-object v0, Lcom/google/i18n/phonenumbers/a;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 131
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/a;->c:Ljava/util/Map;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lcom/google/i18n/phonenumbers/a;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/a;->b(Ljava/lang/String;)V

    .line 135
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    sget-object v0, Lcom/google/i18n/phonenumbers/a;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    sget-object v0, Lcom/google/i18n/phonenumbers/a;->e:Ljava/util/Set;

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    sget-object v1, Lcom/google/i18n/phonenumbers/a;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(I)V
    .locals 5

    .prologue
    .line 75
    const-class v0, Lcom/google/i18n/phonenumbers/b;

    const-string v1, "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 77
    const/4 v2, 0x0

    .line 79
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 82
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 83
    sget-object v3, Lcom/google/i18n/phonenumbers/a;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    :goto_1
    :try_start_2
    sget-object v2, Lcom/google/i18n/phonenumbers/a;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/io/InputStream;)V

    .line 90
    :goto_2
    return-void

    .line 88
    :cond_0
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/io/InputStream;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 85
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 105
    const-class v1, Lcom/google/i18n/phonenumbers/b;

    const-string v0, "/com/google/i18n/phonenumbers/data/ShortNumberMetadataProto_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 107
    const/4 v2, 0x0

    .line 109
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 112
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 113
    sget-object v3, Lcom/google/i18n/phonenumbers/a;->c:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :goto_2
    :try_start_2
    sget-object v2, Lcom/google/i18n/phonenumbers/a;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/io/InputStream;)V

    .line 120
    :goto_3
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/io/InputStream;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 115
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
