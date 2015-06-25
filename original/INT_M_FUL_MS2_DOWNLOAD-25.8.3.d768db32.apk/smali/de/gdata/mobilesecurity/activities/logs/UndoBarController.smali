.class public Lde/gdata/mobilesecurity/activities/logs/UndoBarController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/ViewPropertyAnimator;

.field private d:Landroid/os/Handler;

.field private e:Lde/gdata/mobilesecurity/activities/logs/UndoBarController$UndoListener;

.field private f:Lde/gdata/mobilesecurity/activities/logs/UndoBarController$RedoListener;

.field private g:Landroid/os/Parcelable;

.field private h:Ljava/lang/CharSequence;

.field private i:Z

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lde/gdata/mobilesecurity/activities/logs/UndoBarController$UndoListener;Lde/gdata/mobilesecurity/activities/logs/UndoBarController$RedoListener;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->d:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->i:Z

    .line 164
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/ai;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/logs/ai;-><init>(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->j:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    .line 47
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->e:Lde/gdata/mobilesecurity/activities/logs/UndoBarController$UndoListener;

    .line 48
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->f:Lde/gdata/mobilesecurity/activities/logs/UndoBarController$RedoListener;

    .line 50
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    const v1, 0x7f0b02a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->b:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    const v1, 0x7f0b02a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/ae;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/logs/ae;-><init>(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->hideUndoBar(Z)V

    .line 60
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->g:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->g:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->h:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private a(Landroid/view/animation/Animation;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 138
    if-eqz p2, :cond_0

    .line 139
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/ah;

    invoke-direct {v0, p0, p2}, Lde/gdata/mobilesecurity/activities/logs/ah;-><init>(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 146
    :cond_0
    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)Lde/gdata/mobilesecurity/activities/logs/UndoBarController$UndoListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->e:Lde/gdata/mobilesecurity/activities/logs/UndoBarController$UndoListener;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)Lde/gdata/mobilesecurity/activities/logs/UndoBarController$RedoListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->f:Lde/gdata/mobilesecurity/activities/logs/UndoBarController$RedoListener;

    return-object v0
.end method


# virtual methods
.method public getIsUndoBarActive()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->i:Z

    return v0
.end method

.method public hideUndoBar(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x10e0000

    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->d:Landroid/os/Handler;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->i:Z

    .line 99
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 103
    iput-object v4, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->h:Ljava/lang/CharSequence;

    .line 104
    iput-object v4, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->g:Landroid/os/Parcelable;

    .line 135
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->c:Landroid/view/ViewPropertyAnimator;

    .line 108
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 109
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/af;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/logs/af;-><init>(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 121
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 122
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 123
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 124
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/ag;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/logs/ag;-><init>(Lde/gdata/mobilesecurity/activities/logs/UndoBarController;)V

    invoke-direct {p0, v1, v0}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a(Landroid/view/animation/Animation;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 154
    if-eqz p1, :cond_1

    .line 155
    const-string v0, "undo_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->h:Ljava/lang/CharSequence;

    .line 156
    const-string v0, "undo_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->g:Landroid/os/Parcelable;

    .line 158
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->g:Landroid/os/Parcelable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->h:Ljava/lang/CharSequence;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->g:Landroid/os/Parcelable;

    invoke-virtual {p0, v0, v1, v2}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->showUndoBar(ZLjava/lang/CharSequence;Landroid/os/Parcelable;)V

    .line 162
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 149
    const-string v0, "undo_message"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->h:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 150
    const-string v0, "undo_token"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->g:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    return-void
.end method

.method public showUndoBar(ZLjava/lang/CharSequence;Landroid/os/Parcelable;)V
    .locals 7

    .prologue
    const/high16 v6, 0x10e0000

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 63
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->g:Landroid/os/Parcelable;

    .line 64
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->h:Ljava/lang/CharSequence;

    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->d:Landroid/os/Handler;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->d:Landroid/os/Handler;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iput-boolean v5, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->i:Z

    .line 74
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 92
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->c:Landroid/view/ViewPropertyAnimator;

    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->c:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 87
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 90
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
