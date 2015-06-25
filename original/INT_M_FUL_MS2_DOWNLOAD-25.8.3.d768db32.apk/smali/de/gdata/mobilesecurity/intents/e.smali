.class Lde/gdata/mobilesecurity/intents/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/GdActionBarActivity;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/GdActionBarActivity;Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/e;->b:Lde/gdata/mobilesecurity/intents/GdActionBarActivity;

    iput-object p2, p0, Lde/gdata/mobilesecurity/intents/e;->a:Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/e;->a:Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;

    invoke-interface {v0, p2}, Lde/gdata/mobilesecurity/intents/OnBroadcastExecutor;->run(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
