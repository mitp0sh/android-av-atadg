.class Lde/gdata/mobilesecurity/inapp/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/inapp/util/IabResult;

.field final synthetic b:Lde/gdata/mobilesecurity/inapp/util/Inventory;

.field final synthetic c:Lde/gdata/mobilesecurity/inapp/util/b;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/inapp/util/b;Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Inventory;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/util/c;->c:Lde/gdata/mobilesecurity/inapp/util/b;

    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/util/c;->a:Lde/gdata/mobilesecurity/inapp/util/IabResult;

    iput-object p3, p0, Lde/gdata/mobilesecurity/inapp/util/c;->b:Lde/gdata/mobilesecurity/inapp/util/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/c;->c:Lde/gdata/mobilesecurity/inapp/util/b;

    iget-object v0, v0, Lde/gdata/mobilesecurity/inapp/util/b;->c:Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/util/c;->a:Lde/gdata/mobilesecurity/inapp/util/IabResult;

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/c;->b:Lde/gdata/mobilesecurity/inapp/util/Inventory;

    invoke-interface {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lde/gdata/mobilesecurity/inapp/util/IabResult;Lde/gdata/mobilesecurity/inapp/util/Inventory;)V

    .line 581
    return-void
.end method
