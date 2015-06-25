.class public Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lde/gdata/mobilesecurity/activities/logs/OnSizeChangedListener;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->b:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->b:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->b:I

    .line 47
    return-void
.end method


# virtual methods
.method public getExpandedHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->b:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->b:I

    if-lez v0, :cond_0

    .line 51
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->b:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 54
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 57
    iput p2, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->b:I

    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->a:Lde/gdata/mobilesecurity/activities/logs/OnSizeChangedListener;

    invoke-interface {v0, p2}, Lde/gdata/mobilesecurity/activities/logs/OnSizeChangedListener;->onSizeChanged(I)V

    .line 60
    return-void
.end method

.method public setExpandedHeight(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->b:I

    .line 68
    return-void
.end method

.method public setSizeChangedListener(Lde/gdata/mobilesecurity/activities/logs/OnSizeChangedListener;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/ExpandingLayout;->a:Lde/gdata/mobilesecurity/activities/logs/OnSizeChangedListener;

    .line 72
    return-void
.end method
