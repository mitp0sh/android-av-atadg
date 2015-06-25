.class Lde/gdata/mobilesecurity/activities/debug/y;
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
    .line 270
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/y;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const v5, 0x7f0d03d2

    .line 273
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/y;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 274
    const/4 v1, 0x5

    const v2, 0x7f0d03d1

    const v3, 0x7f02013a

    const v4, 0x7f02012f

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/y;->a:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    invoke-virtual {v1, v5}, Lde/gdata/mobilesecurity/activities/debug/DebugOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 278
    :cond_0
    return-void
.end method
