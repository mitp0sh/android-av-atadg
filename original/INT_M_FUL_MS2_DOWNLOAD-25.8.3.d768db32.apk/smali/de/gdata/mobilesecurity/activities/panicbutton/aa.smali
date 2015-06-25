.class Lde/gdata/mobilesecurity/activities/panicbutton/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

.field final synthetic b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .prologue
    .line 439
    const/4 v1, 0x1

    .line 440
    const-string v0, ""

    .line 441
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->e(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v4, v2, v3

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->f(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 444
    const-string v3, ""

    .line 445
    const-string v2, ""

    .line 446
    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d03ef

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v3}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->g(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v7}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->f(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v7}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->h(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 451
    :cond_0
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0d03f3

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_1
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 455
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0d03f4

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    move-object v9, v3

    move v3, v1

    move-object v1, v9

    .line 462
    :goto_0
    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0405

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->g(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v7}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->f(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 465
    const/4 v3, 0x0

    .line 466
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d03f3

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 468
    :cond_2
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 469
    const/4 v3, 0x0

    .line 470
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d03f4

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 473
    :cond_3
    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d03ff

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->g(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lde/gdata/mobilesecurity/util/MyUtil;->isEmailValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 477
    :cond_4
    const/4 v3, 0x0

    .line 478
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d03f4

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 482
    :cond_5
    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d03e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v4}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->g(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 485
    const/4 v3, 0x0

    .line 486
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d03f4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    :cond_6
    if-eqz v3, :cond_8

    .line 492
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v2, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContact(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v1, v5}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setContent(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->setHeader(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->i(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->updatePanicAction(Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)I

    .line 496
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;)Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment$PanicActionListAdapter;->notifyDataSetChanged()V

    .line 497
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 502
    :goto_1
    return-void

    .line 457
    :cond_7
    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyUtil;->isEmailValid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 458
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0d00ac

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    move-object v9, v3

    move v3, v1

    move-object v1, v9

    goto/16 :goto_0

    .line 499
    :cond_8
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->a:Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->a(Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;)V

    .line 500
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/aa;->b:Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/WidgetConfigFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_9
    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    move-object v9, v3

    move v3, v1

    move-object v1, v9

    goto/16 :goto_0
.end method
