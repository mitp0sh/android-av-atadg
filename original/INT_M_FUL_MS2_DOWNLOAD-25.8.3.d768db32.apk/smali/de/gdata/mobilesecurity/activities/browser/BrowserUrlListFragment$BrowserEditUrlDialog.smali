.class public Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 542
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->b:I

    .line 543
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;)I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->b:I

    return v0
.end method

.method static a(ILjava/lang/String;Ljava/lang/String;IILde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;)Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;
    .locals 3

    .prologue
    .line 547
    new-instance v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;-><init>()V

    .line 548
    invoke-virtual {v0, p5}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->setFragment(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;)V

    .line 550
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 552
    const-string v2, "ACTION"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    const-string v2, "EXTRA_MODE"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    const/16 v2, 0x6a

    if-ne p3, v2, :cond_0

    .line 556
    const-string v2, "ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 557
    const-string v2, "TITLE"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v2, "URL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_0
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->setArguments(Landroid/os/Bundle;)V

    .line 563
    return-object v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;)I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->e:I

    return v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;)Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->f:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    return-object v0
.end method


# virtual methods
.method public getFragment()Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->f:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 568
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 570
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_0

    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->a:I

    .line 573
    const-string v1, "EXTRA_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->e:I

    .line 574
    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_0

    .line 575
    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->a:I

    .line 576
    const-string v1, "ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->b:I

    .line 577
    const-string v1, "TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->d:Ljava/lang/String;

    .line 578
    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->c:Ljava/lang/String;

    .line 581
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 586
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 587
    const v1, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 589
    const v0, 0x7f0b013c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 590
    const v1, 0x7f0b013d

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 592
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 595
    const v2, 0x7f0d02cb

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 596
    iget v4, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->a:I

    const/16 v5, 0x6a

    if-ne v4, v5, :cond_0

    const v2, 0x7f0d02cc

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d00dd

    new-instance v4, Lde/gdata/mobilesecurity/activities/browser/r;

    invoke-direct {v4, p0, v1, v0}, Lde/gdata/mobilesecurity/activities/browser/r;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d021e

    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/q;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/activities/browser/q;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/activities/browser/p;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/browser/p;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 633
    return-object v0
.end method

.method public setFragment(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserEditUrlDialog;->f:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    .line 540
    return-void
.end method
