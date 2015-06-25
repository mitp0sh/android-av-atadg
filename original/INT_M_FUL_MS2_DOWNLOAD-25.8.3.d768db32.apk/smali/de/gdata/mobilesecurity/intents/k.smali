.class Lde/gdata/mobilesecurity/intents/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/k;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/k;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->finish()V

    .line 482
    return-void
.end method
