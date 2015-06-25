.class Lde/gdata/mobilesecurity/services/q;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/services/p;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/services/p;)V
    .locals 0

    .prologue
    .line 2213
    iput-object p1, p0, Lde/gdata/mobilesecurity/services/q;->a:Lde/gdata/mobilesecurity/services/p;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Lde/gdata/mobilesecurity/services/q;->a:Lde/gdata/mobilesecurity/services/p;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/services/p;->interrupt()V

    .line 2217
    return-void
.end method
