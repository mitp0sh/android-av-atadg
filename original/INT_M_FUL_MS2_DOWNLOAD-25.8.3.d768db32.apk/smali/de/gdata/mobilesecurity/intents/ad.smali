.class Lde/gdata/mobilesecurity/intents/ad;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/Main;)V
    .locals 0

    .prologue
    .line 1256
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/ad;->a:Lde/gdata/mobilesecurity/intents/Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1259
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1260
    return-void
.end method
