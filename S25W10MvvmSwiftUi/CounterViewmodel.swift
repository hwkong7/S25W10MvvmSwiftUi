import Foundation
import Observation

@Observable
class CounterViewModel : ViewModel() {
    private val _counterState = MutableStateFlow(CounterModel(0))
    val counterState: StateFlow<CounterModel> = _counterState

    fun addCounter() {
        _counterState.value = CounterModel(_counterState.value.count + 1)
    }

    fun subCounter() {
        _counterState.value = CounterModel(_counterState.value.count - 1)
    }

    fun resetCounter() {
        _counterState.value = CounterModel(0)
    }
}

