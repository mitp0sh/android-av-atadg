.class Lde/gdata/mobilesecurity/receiver/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lde/gdata/mobilesecurity/receiver/TaskIcon;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/receiver/TaskIcon;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/e;->d:Lde/gdata/mobilesecurity/receiver/TaskIcon;

    iput-object p2, p0, Lde/gdata/mobilesecurity/receiver/e;->a:Landroid/app/Activity;

    iput-object p3, p0, Lde/gdata/mobilesecurity/receiver/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lde/gdata/mobilesecurity/receiver/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 655
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/e;->d:Lde/gdata/mobilesecurity/receiver/TaskIcon;

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/e;->a:Landroid/app/Activity;

    iget-object v2, p0, Lde/gdata/mobilesecurity/receiver/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lde/gdata/mobilesecurity/receiver/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->startUpdateService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/e;->d:Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-static {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a(Lde/gdata/mobilesecurity/receiver/TaskIcon;)Lde/gdata/mobilesecurity/util/BasePreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/util/BasePreferences;->setTimeOfLastPeriodicUpdate(J)V

    .line 657
    return-void
.end method
