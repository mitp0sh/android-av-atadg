.class public Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b:Ljava/util/List;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b:Ljava/util/List;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b:Ljava/util/List;

    .line 62
    return-void
.end method

.method private a(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 524
    int-to-float v2, v0

    add-float/2addr v2, p2

    float-to-int v2, v2

    .line 525
    int-to-float v3, v1

    add-float/2addr v3, p3

    float-to-int v3, v3

    .line 527
    const-string v4, "top"

    new-array v5, v8, [I

    aput v0, v5, v6

    aput v2, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 528
    const-string v2, "bottom"

    new-array v4, v8, [I

    aput v1, v4, v6

    aput v3, v4, v7

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 530
    new-array v2, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a:Z

    return v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a:Z

    return p1
.end method

.method private a(IIIZ)[I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    .line 81
    sub-int v4, p2, p1

    .line 83
    if-eqz p4, :cond_4

    .line 84
    if-gez p1, :cond_0

    move v0, v1

    .line 85
    :goto_0
    add-int v3, p1, v4

    add-int/2addr v3, p3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getHeight()I

    move-result v5

    if-le v3, v5, :cond_1

    move v3, v1

    .line 86
    :goto_1
    if-eqz v0, :cond_2

    .line 88
    sub-int/2addr p3, p1

    .line 122
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v2

    aput p3, v0, v1

    return-object v0

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0

    :cond_1
    move v3, v2

    .line 85
    goto :goto_1

    .line 89
    :cond_2
    if-eqz v3, :cond_b

    .line 90
    add-int v0, p1, v4

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 91
    sub-int v3, p1, v0

    if-gez v3, :cond_3

    .line 92
    :goto_3
    sub-int/2addr p3, p1

    goto :goto_2

    :cond_3
    move p1, v0

    .line 91
    goto :goto_3

    .line 95
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->computeVerticalScrollOffset()I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->computeVerticalScrollRange()I

    move-result v4

    .line 97
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->computeVerticalScrollExtent()I

    move-result v3

    .line 98
    sub-int v0, v4, v0

    sub-int v5, v0, v3

    .line 100
    if-gez v5, :cond_5

    .line 101
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 104
    :cond_5
    if-le p3, v5, :cond_8

    move v0, v1

    .line 105
    :goto_4
    sub-int v3, p2, p3

    if-gez v3, :cond_9

    move v3, v1

    .line 108
    :goto_5
    add-int v6, v2, p3

    if-le v6, v4, :cond_6

    move v0, v2

    .line 110
    :cond_6
    if-eqz v0, :cond_a

    .line 111
    sub-int v0, p3, v5

    .line 114
    if-ge v0, v4, :cond_7

    move v0, v2

    .line 115
    :cond_7
    sub-int/2addr p3, v0

    move p1, v0

    goto :goto_2

    :cond_8
    move v0, v2

    .line 104
    goto :goto_4

    :cond_9
    move v3, v2

    .line 105
    goto :goto_5

    .line 116
    :cond_a
    if-eqz v3, :cond_b

    .line 118
    sub-int p1, p3, p2

    move p3, p2

    goto :goto_2

    :cond_b
    move p1, v2

    goto :goto_2
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;IIIZ)[I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(IIIZ)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;[I)[I
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->c:[I

    return-object p1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)[I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->c:[I

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public collapseView(Landroid/view/View;Lde/gdata/mobilesecurity/scan/LogEntry;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 347
    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 353
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 355
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 356
    :goto_0
    if-ge v0, v2, :cond_0

    .line 357
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 358
    invoke-static {v5, v9}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 359
    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    aput v8, v7, v1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    aput v8, v7, v9

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->getCollapsedHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    .line 368
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/c;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lde/gdata/mobilesecurity/activities/logs/c;-><init>(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;IILandroid/view/ViewTreeObserver;Ljava/util/HashMap;Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;)V

    invoke-virtual {v5, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 513
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 321
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 327
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 328
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public expandView(Landroid/view/View;Lde/gdata/mobilesecurity/scan/LogEntry;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 147
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 153
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 155
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 156
    :goto_0
    if-ge v0, v2, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 158
    invoke-static {v5, v9}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 159
    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    aput v8, v7, v1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    aput v8, v7, v9

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    const v0, 0x7f0b023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    .line 172
    new-instance v0, Lde/gdata/mobilesecurity/activities/logs/a;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lde/gdata/mobilesecurity/activities/logs/a;-><init>(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;IILandroid/view/ViewTreeObserver;Ljava/util/HashMap;Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;)V

    invoke-virtual {v5, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 308
    return-void
.end method
