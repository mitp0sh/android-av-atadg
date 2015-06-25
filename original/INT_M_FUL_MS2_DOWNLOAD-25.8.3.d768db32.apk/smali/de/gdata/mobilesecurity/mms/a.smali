.class Lde/gdata/mobilesecurity/mms/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/FieldNamingStrategy;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/mms/RemoteManagementServer;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/mms/RemoteManagementServer;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/a;->a:Lde/gdata/mobilesecurity/mms/RemoteManagementServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-static {}, Lde/gdata/mobilesecurity/mms/RemoteManagementServer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 233
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 235
    aget-char v0, v1, v2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    aput-char v0, v1, v2

    .line 236
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method
