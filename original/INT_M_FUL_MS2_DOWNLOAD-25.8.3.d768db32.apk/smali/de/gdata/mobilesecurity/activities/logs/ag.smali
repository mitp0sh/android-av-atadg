.class Lde/gdata/mobilesecurity/activities/logs/ag;
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
    .line 126
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/ag;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ag;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->c(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ag;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 131
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ag;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 132
    return-void
.end method
