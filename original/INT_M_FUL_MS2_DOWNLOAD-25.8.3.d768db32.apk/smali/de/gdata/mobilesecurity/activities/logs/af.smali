.class Lde/gdata/mobilesecurity/activities/logs/af;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/af;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/af;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->c(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/af;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 116
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/af;->a:Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 117
    return-void
.end method
