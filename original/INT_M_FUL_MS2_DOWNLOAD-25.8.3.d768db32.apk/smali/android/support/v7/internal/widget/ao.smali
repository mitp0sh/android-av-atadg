.class Landroid/support/v7/internal/widget/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/internal/widget/as;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/am;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/widget/ListAdapter;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/am;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Landroid/support/v7/internal/widget/ao;->a:Landroid/support/v7/internal/widget/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/am;Landroid/support/v7/internal/widget/an;)V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ao;-><init>(Landroid/support/v7/internal/widget/am;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Landroid/support/v7/internal/widget/ao;->d:Ljava/lang/CharSequence;

    .line 669
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/app/AlertDialog;

    .line 657
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 685
    iget-object v0, p0, Landroid/support/v7/internal/widget/ao;->a:Landroid/support/v7/internal/widget/am;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/am;->a(I)V

    .line 686
    iget-object v0, p0, Landroid/support/v7/internal/widget/ao;->a:Landroid/support/v7/internal/widget/am;

    iget-object v0, v0, Landroid/support/v7/internal/widget/am;->t:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Landroid/support/v7/internal/widget/ao;->a:Landroid/support/v7/internal/widget/am;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ao;->c:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/support/v7/internal/widget/am;->a(Landroid/view/View;IJ)Z

    .line 689
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ao;->dismiss()V

    .line 690
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Landroid/support/v7/internal/widget/ao;->c:Landroid/widget/ListAdapter;

    .line 665
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 676
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ao;->a:Landroid/support/v7/internal/widget/am;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/am;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 677
    iget-object v1, p0, Landroid/support/v7/internal/widget/ao;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Landroid/support/v7/internal/widget/ao;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 680
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ao;->c:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ao;->a:Landroid/support/v7/internal/widget/am;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/am;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ao;->b:Landroid/app/AlertDialog;

    .line 682
    return-void
.end method
