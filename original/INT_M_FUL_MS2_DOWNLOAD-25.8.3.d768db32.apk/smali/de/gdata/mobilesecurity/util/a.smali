.class final Lde/gdata/mobilesecurity/util/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lde/gdata/mobilesecurity/util/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lde/gdata/mobilesecurity/util/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lde/gdata/mobilesecurity/util/a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/Update;

    const-string v1, ""

    const-string v2, ""

    iget-object v3, p0, Lde/gdata/mobilesecurity/util/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/Update;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 41
    iget-object v1, p0, Lde/gdata/mobilesecurity/util/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lde/gdata/mobilesecurity/util/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lde/gdata/mobilesecurity/util/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
