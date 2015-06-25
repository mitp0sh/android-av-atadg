.class Lde/gdata/mobilesecurity/inapp/util/f;
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
    .line 893
    iput-object p1, p0, Lde/gdata/mobilesecurity/inapp/util/f;->b:Lde/gdata/mobilesecurity/inapp/util/d;

    iput-object p2, p0, Lde/gdata/mobilesecurity/inapp/util/f;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lde/gdata/mobilesecurity/inapp/util/f;->b:Lde/gdata/mobilesecurity/inapp/util/d;

    iget-object v0, v0, Lde/gdata/mobilesecurity/inapp/util/d;->d:Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lde/gdata/mobilesecurity/inapp/util/f;->b:Lde/gdata/mobilesecurity/inapp/util/d;

    iget-object v1, v1, Lde/gdata/mobilesecurity/inapp/util/d;->a:Ljava/util/List;

    iget-object v2, p0, Lde/gdata/mobilesecurity/inapp/util/f;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lde/gdata/mobilesecurity/inapp/util/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 896
    return-void
.end method
