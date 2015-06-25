.class public Lcom/google/android/gms/internal/dl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ey;
.end annotation


# instance fields
.field a:Landroid/util/DisplayMetrics;

.field b:I

.field c:I

.field private final d:Lcom/google/android/gms/internal/gu;

.field private final e:Landroid/content/Context;

.field private final f:Landroid/view/WindowManager;

.field private final g:Lcom/google/android/gms/internal/bl;

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:[I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gu;Landroid/content/Context;Lcom/google/android/gms/internal/bl;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/dl;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/dl;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/dl;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/dl;->k:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/dl;->l:[I

    iput-object p1, p0, Lcom/google/android/gms/internal/dl;->d:Lcom/google/android/gms/internal/gu;

    iput-object p2, p0, Lcom/google/android/gms/internal/dl;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/dl;->g:Lcom/google/android/gms/internal/bl;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/dl;->f:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/dl;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/dl;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dl;->a:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/dl;->f:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/dl;->h:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dl;->i:I

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dl;->d:Lcom/google/android/gms/internal/gu;

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->l:[I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gu;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dl;->d:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v0, v2, v2}, Lcom/google/android/gms/internal/gu;->measure(II)V

    const/high16 v0, 0x43200000    # 160.0f

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->d:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gu;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/dl;->j:I

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->d:Lcom/google/android/gms/internal/gu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gu;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dl;->k:I

    return-void
.end method

.method private d()Lcom/google/android/gms/internal/dk;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/dk$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dk$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->g:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bl;->bo()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dk$a;->l(Z)Lcom/google/android/gms/internal/dk$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->g:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bl;->bp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dk$a;->k(Z)Lcom/google/android/gms/internal/dk$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->g:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bl;->bt()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dk$a;->m(Z)Lcom/google/android/gms/internal/dk$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->g:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bl;->bq()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dk$a;->n(Z)Lcom/google/android/gms/internal/dk$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->g:Lcom/google/android/gms/internal/bl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bl;->br()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dk$a;->o(Z)Lcom/google/android/gms/internal/dk$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dk$a;->bU()Lcom/google/android/gms/internal/dk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dl;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/gi;->s(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x43200000    # 160.0f

    iget-object v2, p0, Lcom/google/android/gms/internal/dl;->a:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/dl;->a:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/dl;->b:I

    iget-object v2, p0, Lcom/google/android/gms/internal/dl;->a:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dl;->c:I

    return-void
.end method

.method public bY()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->cb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->cc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->ca()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dl;->bZ()V

    return-void
.end method

.method public bZ()V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->U(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dl;->d:Lcom/google/android/gms/internal/gu;

    const-string v1, "onReadyEventReceived"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gu;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public ca()V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x"

    iget-object v2, p0, Lcom/google/android/gms/internal/dl;->l:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "y"

    iget-object v2, p0, Lcom/google/android/gms/internal/dl;->l:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "width"

    iget v2, p0, Lcom/google/android/gms/internal/dl;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "height"

    iget v2, p0, Lcom/google/android/gms/internal/dl;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->d:Lcom/google/android/gms/internal/gu;

    const-string v2, "onDefaultPositionReceived"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gu;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error occured while dispatching default position."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cb()V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    iget v2, p0, Lcom/google/android/gms/internal/dl;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "height"

    iget v2, p0, Lcom/google/android/gms/internal/dl;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "density"

    iget v2, p0, Lcom/google/android/gms/internal/dl;->h:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rotation"

    iget v2, p0, Lcom/google/android/gms/internal/dl;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->d:Lcom/google/android/gms/internal/gu;

    const-string v2, "onScreenInfoChanged"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gu;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining screen information."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cc()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/dl;->d()Lcom/google/android/gms/internal/dk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dl;->d:Lcom/google/android/gms/internal/gu;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dk;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gu;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
