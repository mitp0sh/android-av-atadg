.class Lde/gdata/mobilesecurity/activities/logs/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/ai;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ai;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->hideUndoBar(Z)V

    .line 168
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ai;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->d(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)Lde/gdata/mobilesecurity/activities/logs/UndoBarController$RedoListener;

    move-result-object v0

    invoke-interface {v0}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController$RedoListener;->onRedo()V

    .line 169
    return-void
.end method
