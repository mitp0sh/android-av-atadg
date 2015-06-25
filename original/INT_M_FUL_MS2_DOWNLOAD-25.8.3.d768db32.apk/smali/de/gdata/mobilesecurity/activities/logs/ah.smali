.class Lde/gdata/mobilesecurity/activities/logs/ah;
.super Lde/gdata/mobilesecurity/activities/logs/s;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/ah;->b:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/ah;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/activities/logs/s;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ah;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 143
    return-void
.end method
