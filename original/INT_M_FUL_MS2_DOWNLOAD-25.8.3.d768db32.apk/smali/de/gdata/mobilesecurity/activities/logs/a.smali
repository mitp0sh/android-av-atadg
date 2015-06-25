.class Lde/gdata/mobilesecurity/activities/logs/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/view/ViewTreeObserver;

.field final synthetic e:Ljava/util/HashMap;

.field final synthetic f:Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;

.field final synthetic g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;IILandroid/view/ViewTreeObserver;Ljava/util/HashMap;Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/a;->a:Landroid/view/View;

    iput p3, p0, Lde/gdata/mobilesecurity/activities/logs/a;->b:I

    iput p4, p0, Lde/gdata/mobilesecurity/activities/logs/a;->c:I

    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/logs/a;->d:Landroid/view/ViewTreeObserver;

    iput-object p6, p0, Lde/gdata/mobilesecurity/activities/logs/a;->e:Ljava/util/HashMap;

    iput-object p7, p0, Lde/gdata/mobilesecurity/activities/logs/a;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0, v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Z)Z

    .line 185
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 186
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 188
    sub-int v0, v1, v0

    .line 189
    iget v1, p0, Lde/gdata/mobilesecurity/activities/logs/a;->b:I

    iget v3, p0, Lde/gdata/mobilesecurity/activities/logs/a;->c:I

    sub-int/2addr v1, v3

    .line 190
    sub-int/2addr v0, v1

    .line 192
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iget v5, p0, Lde/gdata/mobilesecurity/activities/logs/a;->c:I

    iget v6, p0, Lde/gdata/mobilesecurity/activities/logs/a;->b:I

    invoke-static {v3, v5, v6, v0, v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;IIIZ)[I

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;[I)[I

    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 195
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->c:I

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)[I

    move-result-object v3

    aget v3, v3, v2

    sub-int v4, v0, v3

    .line 197
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 198
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getFirstVisiblePosition()I

    move-result v3

    .line 199
    sub-int/2addr v1, v4

    .line 202
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildCount()I

    move-result v5

    move v4, v3

    move v3, v1

    move v1, v2

    .line 203
    :goto_0
    if-ge v1, v5, :cond_0

    .line 204
    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v6, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 205
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v6, v7, v6

    .line 206
    sub-int v7, v3, v6

    if-lez v7, :cond_0

    .line 207
    add-int/lit8 v4, v4, 0x1

    .line 208
    sub-int/2addr v3, v6

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    if-lez v1, :cond_1

    move v0, v2

    .line 218
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v4, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setSelectionFromTop(II)V

    .line 221
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->requestLayout()V

    .line 305
    :goto_1
    return v2

    .line 231
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Z)Z

    .line 232
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->d:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 234
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)[I

    move-result-object v0

    aget v5, v0, v2

    .line 235
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->b(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)[I

    move-result-object v0

    aget v3, v0, v4

    .line 237
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 238
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 249
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 250
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 251
    aget v9, v1, v2

    invoke-virtual {v0, v9}, Landroid/view/View;->setTop(I)V

    .line 252
    aget v9, v1, v4

    invoke-virtual {v0, v9}, Landroid/view/View;->setBottom(I)V

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_4

    .line 254
    iget-object v9, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v9}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->c(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    aget v1, v1, v2

    iget v9, p0, Lde/gdata/mobilesecurity/activities/logs/a;->c:I

    if-ge v1, v9, :cond_3

    neg-int v1, v5

    .line 256
    :goto_3
    iget-object v9, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    int-to-float v10, v1

    int-to-float v1, v1

    invoke-static {v9, v0, v10, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v1, v3

    .line 255
    goto :goto_3

    .line 258
    :cond_4
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 259
    iget-object v9, p0, Lde/gdata/mobilesecurity/activities/logs/a;->a:Landroid/view/View;

    if-eq v0, v9, :cond_5

    .line 260
    if-le v1, v7, :cond_6

    move v1, v3

    .line 261
    :goto_4
    iget-object v9, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    int-to-float v10, v1

    int-to-float v1, v1

    invoke-static {v9, v0, v10, v1}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_5
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    goto :goto_2

    .line 260
    :cond_6
    neg-int v1, v5

    goto :goto_4

    .line 268
    :cond_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/a;->a:Landroid/view/View;

    neg-int v5, v5

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-static {v0, v1, v5, v3}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->a(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->a:Landroid/view/View;

    const v1, 0x7f0b023d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->setClickable(Z)V

    .line 278
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 279
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 280
    new-instance v1, Lde/gdata/mobilesecurity/activities/logs/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/logs/b;-><init>(Lde/gdata/mobilesecurity/activities/logs/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_5
    move v2, v4

    .line 305
    goto/16 :goto_1

    .line 297
    :cond_8
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->f:Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;->setExpanded(Z)V

    .line 298
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->c(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 299
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->c(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 300
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    goto :goto_6

    .line 303
    :cond_9
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/a;->g:Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->c(Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_5

    .line 271
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
