.class Landroid/support/v7/internal/widget/o;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Landroid/support/v7/internal/widget/o;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 127
    iget-object v0, p0, Landroid/support/v7/internal/widget/o;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/r;->notifyDataSetChanged()V

    .line 128
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 132
    iget-object v0, p0, Landroid/support/v7/internal/widget/o;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/r;->notifyDataSetInvalidated()V

    .line 133
    return-void
.end method
