.class Lde/gdata/mobilesecurity/activities/logs/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/ae;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ae;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->hideUndoBar(Z)V

    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ae;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->b(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)Lde/gdata/mobilesecurity/activities/logs/UndoBarController$UndoListener;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/ae;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController$UndoListener;->onUndo(Landroid/os/Parcelable;)V

    .line 56
    return-void
.end method
