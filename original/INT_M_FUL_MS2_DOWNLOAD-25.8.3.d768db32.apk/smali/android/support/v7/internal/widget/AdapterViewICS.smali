.class abstract Landroid/support/v7/internal/widget/AdapterViewICS;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field A:I

.field B:I

.field C:J

.field D:Z

.field private a:I

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Landroid/support/v7/internal/widget/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/internal/widget/AdapterViewICS",
            "<TT;>.android/support/v7/internal/widget/w;"
        }
    .end annotation
.end field

.field k:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field l:I

.field m:I

.field n:J

.field o:J

.field p:Z

.field q:I

.field r:Z

.field s:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;

.field t:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

.field u:Z

.field v:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field w:J

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field y:J

.field z:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->k:I

    .line 84
    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->n:J

    .line 94
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->p:Z

    .line 126
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->r:Z

    .line 152
    iput v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->v:I

    .line 158
    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->w:J

    .line 163
    iput v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->x:I

    .line 169
    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->y:J

    .line 201
    iput v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->B:I

    .line 206
    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->C:J

    .line 225
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->D:Z

    .line 237
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/AdapterViewICS;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 891
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->s:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 902
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->f()I

    move-result v3

    .line 895
    if-ltz v3, :cond_1

    .line 896
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->c()Landroid/view/View;

    move-result-object v2

    .line 897
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->s:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->e()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;->onItemSelected(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/view/View;IJ)V

    goto :goto_0

    .line 900
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->s:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;->onNothingSelected(Landroid/support/v7/internal/widget/AdapterViewICS;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 733
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v1

    .line 737
    :cond_0
    if-eqz p1, :cond_3

    .line 738
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 740
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->setVisibility(I)V

    .line 749
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->u:Z

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/AdapterViewICS;->onLayout(ZIIII)V

    .line 756
    :cond_1
    :goto_1
    return-void

    .line 743
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewICS;->setVisibility(I)V

    goto :goto_0

    .line 753
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 754
    :cond_4
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AdapterViewICS;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/AdapterViewICS;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->t:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

    .line 283
    return-void
.end method

.method public a(Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->s:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;

    .line 399
    return-void
.end method

.method public a(Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->t:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->playSoundEffect(I)V

    .line 305
    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 308
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->t:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;->onItemClick(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/view/View;IJ)V

    move v0, v6

    .line 312
    :cond_1
    return v0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 474
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 502
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 487
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(IZ)I
    .locals 0

    .prologue
    .line 1086
    return p1
.end method

.method public b(I)J
    .locals 2

    .prologue
    .line 770
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->e()Landroid/widget/Adapter;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public abstract c()Landroid/view/View;
.end method

.method c(I)V
    .locals 2

    .prologue
    .line 1094
    iput p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->x:I

    .line 1095
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->b(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->y:J

    .line 1096
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 916
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->z:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(I)V
    .locals 2

    .prologue
    .line 1104
    iput p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->v:I

    .line 1105
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->b(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->w:J

    .line 1107
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->p:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->q:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1108
    iput p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->m:I

    .line 1109
    iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->w:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->n:J

    .line 1111
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 906
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->c()Landroid/view/View;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    const/4 v0, 0x1

    .line 911
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 794
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/AdapterViewICS;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 786
    return-void
.end method

.method public abstract e()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public f()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 552
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->v:I

    return v0
.end method

.method public g()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 561
    iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->w:J

    return-wide v0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method i()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 714
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->e()Landroid/widget/Adapter;

    move-result-object v4

    .line 715
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    move v0, v1

    .line 716
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v3, v1

    .line 720
    :goto_1
    if-eqz v3, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->d:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 721
    if-eqz v3, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->c:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 722
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 723
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->a(Z)V

    .line 725
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 715
    goto :goto_0

    :cond_6
    move v3, v2

    .line 716
    goto :goto_1

    :cond_7
    move v0, v2

    .line 720
    goto :goto_2

    :cond_8
    move v0, v2

    .line 721
    goto :goto_3
.end method

.method j()V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->s:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 870
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->D:Z

    if-eqz v0, :cond_4

    .line 875
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->e:Landroid/support/v7/internal/widget/w;

    if-nez v0, :cond_1

    .line 876
    new-instance v0, Landroid/support/v7/internal/widget/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/w;-><init>(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/support/v7/internal/widget/t;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->e:Landroid/support/v7/internal/widget/w;

    .line 878
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->e:Landroid/support/v7/internal/widget/w;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->post(Ljava/lang/Runnable;)Z

    .line 885
    :cond_2
    :goto_0
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 886
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->sendAccessibilityEvent(I)V

    .line 888
    :cond_3
    return-void

    .line 880
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->a()V

    goto :goto_0
.end method

.method k()V
    .locals 8

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 920
    iget v4, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->z:I

    .line 923
    if-lez v4, :cond_6

    .line 928
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->p:Z

    if-eqz v0, :cond_5

    .line 931
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->p:Z

    .line 935
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->m()I

    move-result v0

    .line 936
    if-ltz v0, :cond_5

    .line 938
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->b(IZ)I

    move-result v3

    .line 939
    if-ne v3, v0, :cond_5

    .line 941
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->d(I)V

    move v3, v2

    .line 946
    :goto_0
    if-nez v3, :cond_3

    .line 948
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->f()I

    move-result v0

    .line 951
    if-lt v0, v4, :cond_0

    .line 952
    add-int/lit8 v0, v4, -0x1

    .line 954
    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    .line 959
    :cond_1
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/internal/widget/AdapterViewICS;->b(IZ)I

    move-result v4

    .line 960
    if-gez v4, :cond_4

    .line 962
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/AdapterViewICS;->b(IZ)I

    move-result v0

    .line 964
    :goto_1
    if-ltz v0, :cond_3

    .line 965
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->d(I)V

    .line 966
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->l()V

    move v0, v2

    .line 971
    :goto_2
    if-nez v0, :cond_2

    .line 973
    iput v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->x:I

    .line 974
    iput-wide v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->y:J

    .line 975
    iput v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->v:I

    .line 976
    iput-wide v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->w:J

    .line 977
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->p:Z

    .line 978
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->l()V

    .line 980
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method l()V
    .locals 4

    .prologue
    .line 983
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->x:I

    iget v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->B:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->y:J

    iget-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->C:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 984
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->j()V

    .line 985
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->x:I

    iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->B:I

    .line 986
    iget-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->y:J

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->C:J

    .line 988
    :cond_1
    return-void
.end method

.method m()I
    .locals 12

    .prologue
    .line 999
    iget v6, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->z:I

    .line 1001
    if-nez v6, :cond_1

    .line 1002
    const/4 v3, -0x1

    .line 1074
    :cond_0
    :goto_0
    return v3

    .line 1005
    :cond_1
    iget-wide v8, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->n:J

    .line 1006
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->m:I

    .line 1009
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v1, v8, v2

    if-nez v1, :cond_2

    .line 1010
    const/4 v3, -0x1

    goto :goto_0

    .line 1014
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1015
    add-int/lit8 v1, v6, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1017
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    add-long v10, v2, v4

    .line 1028
    const/4 v0, 0x0

    .line 1038
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->e()Landroid/widget/Adapter;

    move-result-object v7

    .line 1039
    if-nez v7, :cond_b

    .line 1040
    const/4 v3, -0x1

    goto :goto_0

    .line 1058
    :cond_3
    if-nez v4, :cond_4

    if-eqz v0, :cond_9

    if-nez v5, :cond_9

    .line 1060
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 1063
    const/4 v0, 0x0

    move v3, v1

    .line 1043
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-gtz v4, :cond_6

    .line 1044
    invoke-interface {v7, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    .line 1045
    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 1050
    add-int/lit8 v4, v6, -0x1

    if-ne v1, v4, :cond_7

    const/4 v4, 0x1

    move v5, v4

    .line 1051
    :goto_2
    if-nez v2, :cond_8

    const/4 v4, 0x1

    .line 1053
    :goto_3
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 1074
    :cond_6
    const/4 v3, -0x1

    goto :goto_0

    .line 1050
    :cond_7
    const/4 v4, 0x0

    move v5, v4

    goto :goto_2

    .line 1051
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 1064
    :cond_9
    if-nez v5, :cond_a

    if-nez v0, :cond_5

    if-nez v4, :cond_5

    .line 1066
    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 1069
    const/4 v0, 0x1

    move v3, v2

    goto :goto_1

    :cond_b
    move v2, v1

    move v3, v1

    goto :goto_1
.end method

.method n()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1119
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1120
    iput-boolean v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->p:Z

    .line 1121
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->o:J

    .line 1122
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->x:I

    if-ltz v0, :cond_2

    .line 1124
    iget v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->x:I

    iget v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->k:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1125
    iget-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->w:J

    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->n:J

    .line 1126
    iget v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->v:I

    iput v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->m:I

    .line 1127
    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->l:I

    .line 1130
    :cond_0
    iput v4, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->q:I

    .line 1147
    :cond_1
    :goto_0
    return-void

    .line 1133
    :cond_2
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/AdapterViewICS;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1134
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->e()Landroid/widget/Adapter;

    move-result-object v1

    .line 1135
    iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->k:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->k:I

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1136
    iget v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->k:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->n:J

    .line 1140
    :goto_1
    iget v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->k:I

    iput v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->m:I

    .line 1141
    if-eqz v0, :cond_3

    .line 1142
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->l:I

    .line 1144
    :cond_3
    iput v5, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->q:I

    goto :goto_0

    .line 1138
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->n:J

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 849
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 850
    iget-object v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->e:Landroid/support/v7/internal/widget/w;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 851
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->a:I

    .line 543
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 515
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2

    .prologue
    .line 527
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFocusable(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 689
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->e()Landroid/widget/Adapter;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    .line 692
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->c:Z

    .line 693
    if-nez p1, :cond_1

    .line 694
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->d:Z

    .line 697
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 698
    return-void

    :cond_3
    move v0, v1

    .line 690
    goto :goto_0

    :cond_4
    move v2, v1

    .line 697
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 702
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->e()Landroid/widget/Adapter;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    .line 705
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->d:Z

    .line 706
    if-eqz p1, :cond_1

    .line 707
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/AdapterViewICS;->c:Z

    .line 710
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 711
    return-void

    :cond_3
    move v0, v1

    .line 703
    goto :goto_0

    :cond_4
    move v2, v1

    .line 710
    goto :goto_1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 776
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
