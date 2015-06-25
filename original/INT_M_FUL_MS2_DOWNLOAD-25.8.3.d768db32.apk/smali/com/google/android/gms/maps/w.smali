.class Lcom/google/android/gms/maps/w;
.super Lcom/google/android/gms/maps/internal/m$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/OnMapReadyCallback;

.field final synthetic b:Lcom/google/android/gms/maps/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/v;Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/w;->b:Lcom/google/android/gms/maps/v;

    iput-object p2, p0, Lcom/google/android/gms/maps/w;->a:Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/w;->a:Lcom/google/android/gms/maps/OnMapReadyCallback;

    new-instance v1, Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;-><init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/OnMapReadyCallback;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V

    return-void
.end method
