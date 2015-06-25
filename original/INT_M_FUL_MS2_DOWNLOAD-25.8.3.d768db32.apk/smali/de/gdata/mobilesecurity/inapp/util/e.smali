.class Lde/gdata/mobilesecurity/inapp/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lde/gdata/mobilesecurity/inapp/util/d;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/inapp/util/d;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/util/e;->b:Lde/gdata/mobilesecurity/inapp/util/d;

    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/util/e;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 888
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/e;->b:Lde/gdata/mobilesecurity/inapp/util/d;

    iget-object v2, v0, Lde/gdata/mobilesecurity/inapp/util/d;->b:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/e;->b:Lde/gdata/mobilesecurity/inapp/util/d;

    iget-object v0, v0, Lde/gdata/mobilesecurity/inapp/util/d;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/inapp/util/Purchase;

    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/util/e;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/inapp/util/IabResult;

    invoke-interface {v2, v0, v1}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lde/gdata/mobilesecurity/inapp/util/Purchase;Lde/gdata/mobilesecurity/inapp/util/IabResult;)V

    .line 889
    return-void
.end method
