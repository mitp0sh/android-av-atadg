.class Lde/gdata/mobilesecurity/intents/aa;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/aa;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 973
    new-instance v0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/aa;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;-><init>(Landroid/content/Context;)V

    .line 974
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->fetchAndParseData()V

    .line 975
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask;->pushNewsToUI()V

    .line 976
    return-void
.end method
