.class final Lcom/google/android/gms/internal/xa;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xa;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/xa;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/xa;->a:I

    iget v0, p1, Lcom/google/android/gms/internal/xa;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/xa;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/xa;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/iz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/iz;-><init>(Lcom/google/android/gms/internal/xa;)V

    return-object v0
.end method
