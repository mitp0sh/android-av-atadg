.class Lcom/google/android/gms/maps/q;
.super Lcom/google/android/gms/maps/internal/l$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;

.field final synthetic b:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/q;->b:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;->onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
