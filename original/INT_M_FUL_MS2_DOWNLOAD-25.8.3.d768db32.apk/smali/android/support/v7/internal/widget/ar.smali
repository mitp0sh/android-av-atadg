.class Landroid/support/v7/internal/widget/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/am;

.field final synthetic b:Landroid/support/v7/internal/widget/aq;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/aq;Landroid/support/v7/internal/widget/am;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Landroid/support/v7/internal/widget/ar;->b:Landroid/support/v7/internal/widget/aq;

    iput-object p2, p0, Landroid/support/v7/internal/widget/ar;->a:Landroid/support/v7/internal/widget/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 708
    iget-object v0, p0, Landroid/support/v7/internal/widget/ar;->b:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/am;->a(I)V

    .line 709
    iget-object v0, p0, Landroid/support/v7/internal/widget/ar;->b:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    iget-object v0, v0, Landroid/support/v7/internal/widget/am;->t:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/support/v7/internal/widget/ar;->b:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/am;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ar;->b:Landroid/support/v7/internal/widget/aq;

    invoke-static {v1}, Landroid/support/v7/internal/widget/aq;->a(Landroid/support/v7/internal/widget/aq;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/internal/widget/am;->a(Landroid/view/View;IJ)Z

    .line 712
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ar;->b:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aq;->dismiss()V

    .line 713
    return-void
.end method
