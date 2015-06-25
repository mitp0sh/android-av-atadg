.class Landroid/support/v7/internal/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/AdapterViewICS;

.field private final b:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Landroid/support/v7/internal/widget/v;->b:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

    .line 267
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v7/internal/widget/v;->b:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;

    iget-object v1, p0, Landroid/support/v7/internal/widget/v;->a:Landroid/support/v7/internal/widget/AdapterViewICS;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;->onItemClick(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/view/View;IJ)V

    .line 272
    return-void
.end method
