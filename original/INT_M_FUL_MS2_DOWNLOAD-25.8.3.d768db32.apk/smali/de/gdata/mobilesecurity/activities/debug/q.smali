.class Lde/gdata/mobilesecurity/activities/debug/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/q;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/q;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/debug/q;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lde/gdata/mobilesecurity/intents/SigCloudConnector;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->startActivity(Landroid/content/Intent;)V

    .line 464
    return-void
.end method
