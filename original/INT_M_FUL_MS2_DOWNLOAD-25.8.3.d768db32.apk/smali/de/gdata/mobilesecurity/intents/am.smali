.class Lde/gdata/mobilesecurity/intents/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/am;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 257
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/am;->a:Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;

    invoke-static {v0, p3}, Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;->b(Lde/gdata/mobilesecurity/intents/MalwareToRemoveList;I)V

    .line 258
    return-void
.end method
