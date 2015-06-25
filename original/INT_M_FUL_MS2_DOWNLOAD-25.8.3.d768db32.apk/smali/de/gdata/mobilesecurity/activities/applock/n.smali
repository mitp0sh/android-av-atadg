.class Lde/gdata/mobilesecurity/activities/applock/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/n;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 74
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/n;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->a(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0b026f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/n;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->b(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/n;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "protectedComponent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/n;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "protectedTask"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 80
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/applock/n;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "returnToTask"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 82
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/applock/n;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->finish()V

    .line 84
    invoke-static {v0}, Lde/gdata/mobilesecurity/services/WatcherService;->addUnlockedApp(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/n;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lde/gdata/mobilesecurity/activities/applock/ProtectApp;->lastUnlock:J

    .line 89
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_1

    .line 90
    if-eq v2, v6, :cond_0

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/util/MyUtil;->moveTaskToFront(Landroid/content/Context;I)V

    .line 91
    :cond_0
    if-eq v1, v6, :cond_1

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->moveTaskToFront(Landroid/content/Context;I)V

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/aa;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/applock/n;->a:Lde/gdata/mobilesecurity/activities/applock/ProtectApp;

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/applock/aa;-><init>(Lde/gdata/mobilesecurity/activities/applock/ProtectApp;Z)V

    .line 96
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
