.class Landroid/support/v7/internal/widget/aq;
.super Landroid/support/v7/internal/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/as;


# instance fields
.field final synthetic b:Landroid/support/v7/internal/widget/am;

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/am;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 698
    iput-object p1, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    .line 699
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 701
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/aq;->setAnchorView(Landroid/view/View;)V

    .line 702
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->setModal(Z)V

    .line 703
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->setPromptPosition(I)V

    .line 705
    new-instance v0, Landroid/support/v7/internal/widget/v;

    new-instance v1, Landroid/support/v7/internal/widget/ar;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/ar;-><init>(Landroid/support/v7/internal/widget/aq;Landroid/support/v7/internal/widget/am;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/v;-><init>(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;)V

    .line 716
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 717
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/aq;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Landroid/support/v7/internal/widget/aq;->c:Ljava/lang/CharSequence;

    .line 732
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 721
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 722
    iput-object p1, p0, Landroid/support/v7/internal/widget/aq;->d:Landroid/widget/ListAdapter;

    .line 723
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 736
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/am;->getPaddingLeft()I

    move-result v1

    .line 737
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    iget v0, v0, Landroid/support/v7/internal/widget/am;->E:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 738
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/am;->getWidth()I

    move-result v2

    .line 739
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/am;->getPaddingRight()I

    move-result v3

    .line 740
    iget-object v4, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->d:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/internal/widget/am;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->setContentWidth(I)V

    .line 750
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 751
    const/4 v0, 0x0

    .line 752
    if-eqz v2, :cond_0

    .line 753
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    invoke-static {v0}, Landroid/support/v7/internal/widget/am;->a(Landroid/support/v7/internal/widget/am;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 754
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    invoke-static {v0}, Landroid/support/v7/internal/widget/am;->a(Landroid/support/v7/internal/widget/am;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 756
    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->setHorizontalOffset(I)V

    .line 757
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->setInputMethodMode(I)V

    .line 758
    invoke-super {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V

    .line 759
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 760
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/am;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->setSelection(I)V

    .line 761
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    iget v0, v0, Landroid/support/v7/internal/widget/am;->E:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 744
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/am;->getWidth()I

    move-result v0

    .line 745
    iget-object v2, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/am;->getPaddingRight()I

    move-result v2

    .line 746
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->setContentWidth(I)V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    iget v0, v0, Landroid/support/v7/internal/widget/am;->E:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->setContentWidth(I)V

    goto :goto_0
.end method
