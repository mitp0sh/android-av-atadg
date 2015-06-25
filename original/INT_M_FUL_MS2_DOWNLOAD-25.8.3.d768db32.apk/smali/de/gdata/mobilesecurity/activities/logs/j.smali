.class Lde/gdata/mobilesecurity/activities/logs/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:F

.field final synthetic b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

.field private c:I


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)V
    .locals 1

    .prologue
    .line 203
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->c:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 210
    iget v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->c:I

    if-gez v0, :cond_0

    .line 211
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->c:I

    .line 214
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v7, v6

    .line 324
    :cond_1
    :goto_0
    return v7

    .line 216
    :pswitch_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-boolean v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v7, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->c:Z

    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->a:F

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-virtual {v0, p1, v3}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->setSwipePosition(Landroid/view/View;F)V

    .line 225
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->e:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v6, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->c:Z

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->e:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-object p1, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->e:Landroid/view/View;

    .line 230
    :cond_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-boolean v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 235
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    .line 238
    :cond_3
    iget v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->a:F

    sub-float/2addr v0, v1

    .line 239
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 240
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-boolean v2, v2, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b:Z

    if-nez v2, :cond_4

    .line 241
    iget v2, p0, Lde/gdata/mobilesecurity/activities/logs/j;->c:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 242
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v7, v1, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b:Z

    .line 243
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    move-result-object v1

    invoke-virtual {v1, v7}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 246
    :cond_4
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-boolean v1, v1, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b:Z

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-virtual {v1, p1, v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->setSwipePosition(Landroid/view/View;F)V

    goto :goto_0

    .line 252
    :pswitch_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-boolean v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 253
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_6

    .line 254
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    const-string v0, "ANTITHEFT_PAGE"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a:Landroid/app/Activity;

    check-cast v0, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0, v4, v1}, Lde/gdata/mobilesecurity/intents/Main;->selectItem(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 258
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a:Landroid/app/Activity;

    const-class v2, Lde/gdata/mobilesecurity/activities/applock/Settings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 266
    :cond_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->e:Landroid/view/View;

    .line 268
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-boolean v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b:Z

    if-eqz v0, :cond_c

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 270
    invoke-static {}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->isRuntimePostIceCreamSandwich()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    .line 273
    :cond_8
    iget v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->a:F

    sub-float/2addr v0, v1

    .line 274
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 279
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v2}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->c(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_9

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_b

    .line 282
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 283
    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_1
    move v6, v7

    move v3, v0

    move v0, v1

    .line 292
    :goto_2
    sub-float v0, v5, v0

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v4, v0

    .line 293
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->animateSwipe(Landroid/view/View;FJZ)V

    goto/16 :goto_0

    .line 283
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    .line 287
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    sub-float v0, v5, v0

    .line 289
    goto :goto_2

    .line 297
    :cond_c
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iput-boolean v6, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->c:Z

    .line 299
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->d(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/UndoBarController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lde/gdata/mobilesecurity/activities/logs/UndoBarController;->hideUndoBar(Z)V

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;

    .line 303
    iget-object v1, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setExpandedLayoutId()V

    .line 304
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v2, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v1, p1, v2}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->addExpandedLayoutViews(Landroid/view/View;Lde/gdata/mobilesecurity/scan/LogEntry;)V

    .line 306
    iget-object v1, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_d

    .line 307
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 308
    const-string v1, "ANTITHEFT_PAGE"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->a:Landroid/app/Activity;

    check-cast v1, Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1, v4, v2}, Lde/gdata/mobilesecurity/intents/Main;->selectItem(ILandroid/os/Bundle;)V

    .line 313
    :cond_d
    iget-object v1, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_e

    .line 314
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    move-result-object v1

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v1, p1, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->expandView(Landroid/view/View;Lde/gdata/mobilesecurity/scan/LogEntry;)V

    goto/16 :goto_0

    .line 316
    :cond_e
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/j;->b:Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;->b(Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter;)Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;

    move-result-object v1

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/logs/LogEntryCursorAdapter$ViewHolder;->g:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v1, p1, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;->collapseView(Landroid/view/View;Lde/gdata/mobilesecurity/scan/LogEntry;)V

    goto/16 :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
