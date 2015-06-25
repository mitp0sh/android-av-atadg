.class Lde/gdata/mobilesecurity/activities/logs/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/p;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/p;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/p;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 530
    return-void
.end method
